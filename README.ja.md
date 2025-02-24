# MFMKit

![Version](https://img.shields.io/badge/Version-1.0.0-important)
[![Xcode](https://img.shields.io/badge/Xcode-16.1-blue.svg)](https://developer.apple.com/xcode) 
[![Swift 5.7.1](https://img.shields.io/badge/Swift-5-blue.svg?style=flat)](https://swift.org/)
[![License](https://img.shields.io/github/license/chanjima/MFMKit)](https://github.com/chanjima/MFMKit/blob/main/LICENSE)

[English](README.md) | [日本語](README.ja.md)

MFMKitは、MFM書式（Misskey Flavored Markdown）を含む文章を構文解析するSwiftライブラリです。

このプロジェクトは[mfm.js](https://github.com/misskey-dev/mfm.js) の影響を強く受けています。</br>
MFM書式そのものについては[mfm.jsのドキュメント](https://github.com/misskey-dev/mfm.js/blob/develop/docs/syntax.md)に詳しい説明があります。

## Usage

```Swift
import MFMKit
import Foundation

let inputText = """
<center>
Hello $[tada everynyan! 🎉]

I'm @ai, A bot of misskey!

https://github.com/syuilo/ai
</center>
"""
// Generate an MFM tree from a string containing MFM.
let mfmTree = Mfm.parse(inputText)

// Generate a simple MFM tree from a string containing MFM.
let simpleMfmTree = Mfm.parseSimple("I like the hot soup :soup:")

// Generate a MFM json from the full MFM text.
let mfmJson = Mfm.toJson(mfmTree)

// Convert the MFM tree back to MFM text. (Not available in ver1.0.0)
let text = Mfm.toString(mfmTree)
```

## Contributing

バグ報告や機能追加の提案はGitHubのIssueで受け付けています。

## License

MITライセンスが適用されます。
