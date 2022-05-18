.class final Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->asyncLoad(Landroid/view/View;Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/huanju/ssp/base/core/common/ImgDownListener;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$1;->val$listener:Lcom/huanju/ssp/base/core/common/ImgDownListener;

    iput-object p3, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$1;->val$listener:Lcom/huanju/ssp/base/core/common/ImgDownListener;

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->access$000(Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;)[B

    move-result-object v0

    .line 81
    .local v0, "data":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader$1;->val$url:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->access$100(Landroid/view/View;Ljava/lang/String;[B)V

    .line 84
    :cond_0
    return-void
.end method
