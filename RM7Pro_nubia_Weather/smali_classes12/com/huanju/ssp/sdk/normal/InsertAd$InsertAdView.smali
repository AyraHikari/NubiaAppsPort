.class final Lcom/huanju/ssp/sdk/normal/InsertAd$InsertAdView;
.super Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;
.source "InsertAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/normal/InsertAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InsertAdView"
.end annotation


# static fields
.field private static final SCAL_HEIGHT:D = 0.75

.field private static final SCAL_WIDTH:D = 0.9


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/InsertAd;


# direct methods
.method public constructor <init>(Lcom/huanju/ssp/sdk/normal/InsertAd;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/InsertAd$InsertAdView;->this$0:Lcom/huanju/ssp/sdk/normal/InsertAd;

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;-><init>(Lcom/huanju/ssp/sdk/normal/AbsNormalAd;Landroid/content/Context;)V

    .line 133
    return-void
.end method


# virtual methods
.method protected drawView(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 145
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/huanju/ssp/sdk/normal/InsertAd$InsertAdView;->getSmartSize(I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/huanju/ssp/sdk/normal/InsertAd$InsertAdView;->getSmartSize(I)I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/huanju/ssp/sdk/normal/InsertAd$InsertAdView;->drawCloseView(Landroid/graphics/Canvas;ILjava/lang/String;I)V

    .line 146
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/huanju/ssp/sdk/normal/InsertAd$InsertAdView;->getSmartSize(I)I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/huanju/ssp/sdk/normal/InsertAd$InsertAdView;->getSmartSize(I)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/huanju/ssp/sdk/normal/InsertAd$InsertAdView;->drawAdMark(Landroid/graphics/Canvas;II)V

    .line 147
    const v0, 0x3fa66666    # 1.3f

    invoke-virtual {p0, p1, v0}, Lcom/huanju/ssp/sdk/normal/InsertAd$InsertAdView;->drawLogo(Landroid/graphics/Canvas;F)V

    .line 148
    return-void
.end method

.method public getViewSize()[I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 137
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/InsertAd$InsertAdView;->screenSizes:[I

    aget v1, v1, v6

    int-to-double v2, v1

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 138
    .local v0, "width":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v0, v1, v6

    const/4 v2, 0x1

    int-to-double v4, v0

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    double-to-int v3, v4

    aput v3, v1, v2

    return-object v1
.end method
