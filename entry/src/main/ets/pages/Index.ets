import { router } from '@kit.ArkUI'
import { BusinessError } from '@kit.BasicServicesKit'
import { TestUtil } from '../common/TestUtil'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Column() {
        Button() {
          Text("执行方法")
        }.padding({
          top: 8,
          bottom: 8,
          left: 20,
          right: 20
        }).fontSize(30)
        .margin({ top: '50%', left: '36%' }).onClick(() => {
          // console.log(TestUtil.hi)
          TestUtil.getInfo();
          // router.pushUrl({ url: 'pages/Second' }).then(() => {
          //   console.log("跳转到下一页成功")
          // }).catch((err: BusinessError) => {
          //   console.log(`跳转失败 ${err.message}`)
          // })
        })
      }

    }
    .height('100%')
    .width('100%')
  }
}