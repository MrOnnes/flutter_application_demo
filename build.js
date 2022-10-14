const StyleDictionary = require('style-dictionary');

console.log('Build started...');
console.log('\n==============================================');


// REGISTER THE CUSTOM TRANFORMS

StyleDictionary.registerTransform({
    name: "type/fontFamilies",
    type: "value",
    transitive: true,
    matcher: (token) => token.type === "fontFamily",
    transformer: (token) => `'${token.value}'`,
  });

StyleDictionary.registerTransform({
    name: "type/TextCase",
    type: "value",
    transitive: true,
    matcher: (token) => token.type === "textCase",
    transformer: (token) => `'${token.value}'`,
  });

StyleDictionary.registerTransform({
    name: "type/TextDecoration",
    type: "value",
    transitive: true,
    matcher: (token) => token.type === "textDecoration",
    transformer: (token) => `'${token.value}'`,
  });

StyleDictionary.registerTransform({
    name: "type/LetterSpacing",
    type: "value",
    transitive: true,
    matcher: (token) => token.type === "letterSpacing",
    transformer: (token) => `'${token.value}'`,
  });

  StyleDictionary.registerTransform({
    name: "type/FontWeight",
    type: "value",
    transitive: true,
    matcher: (token) => token.type === "fontWeight",
    transformer: (token) => `FontWeight.w${token.value}`,
  });

  StyleDictionary.registerTransform({
    name: "type/FontSize",
    type: "value",
    transitive: true,
    matcher: (token) => token.type === "fontSize",
    transformer: (token) => `${token.value}.0`,
  });

StyleDictionary.registerTransform({
    name: "type/borderRadius",
    type: "value",
    transitive: true,
    matcher: (token) => token.type === "borderRadius",
    transformer: (token) => `${token.value}.0`,
  });



// APPLY THE CONFIGURATION
// IMPORTANT: the registration of custom transforms
// needs to be done _before_ applying the configuration
StyleDictionaryExtended = StyleDictionary.extend(__dirname + '/config.json');


// FINALLY, BUILD ALL THE PLATFORMS
StyleDictionaryExtended.buildAllPlatforms();


console.log('\n==============================================');
console.log('\nBuild completed!');