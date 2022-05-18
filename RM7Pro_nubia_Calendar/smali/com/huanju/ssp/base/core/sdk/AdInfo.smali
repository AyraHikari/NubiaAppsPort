.class public Lcom/huanju/ssp/base/core/sdk/AdInfo;
.super Ljava/lang/Object;
.source "AdInfo.java"


# static fields
.field public static final TYPE_DOWN_CONNET_END:I = 0x5

.field public static final TYPE_DOWN_CONNET_START:I = 0x4

.field public static final TYPE_DOWN_WRITE_END:I = 0x7

.field public static final TYPE_DOWN_WRITE_START:I = 0x6

.field public static final TYPE_REQ_CONNET_END:I = 0x1

.field public static final TYPE_REQ_CONNET_START:I = 0x0

.field public static final TYPE_REQ_READ_RESULT_END:I = 0x3

.field public static final TYPE_REQ_READ_RESULT_START:I = 0x2


# instance fields
.field public autoClose:Z

.field public closeWhenAdClicked:Z

.field isCloseBtnVisible:Z

.field public isDismiss:Z

.field public isReady:Z

.field public isShow:Z

.field public isShowNow:Z

.field mAttach:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isShowNow:Z

    .line 21
    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->autoClose:Z

    .line 26
    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isCloseBtnVisible:Z

    .line 31
    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->closeWhenAdClicked:Z

    return-void
.end method
