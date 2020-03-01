# docker-cihai-cli

https://pypi.org/project/cihai-cli/ with latest [Unicode Han Database](https://www.unicode.org/reports/tr38/) for https://hub.docker.com/r/karronoli/cihai-cli

## Example

```
$ docker run --rm karronoli/cihai-cli:latest cihai info -a 赵
char: 赵
kCangjie: GOK
kCantonese: ziu6
kDefinition: surname; ancient state
kFourCornerCode: '4480'
kFrequency: '3'
kMandarin: zhào
kRSKangXi: '156.2'
kRSUnicode: '156.2'
kTotalStrokes: '9'
kTraditionalVariant: U+8D99
kXHC1983: 1460.050:zhào
ucn: U+8D75
$
```
