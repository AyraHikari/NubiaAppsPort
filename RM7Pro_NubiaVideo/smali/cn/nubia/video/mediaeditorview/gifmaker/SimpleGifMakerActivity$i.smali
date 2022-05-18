.class Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/mediaeditorview/gifmaker/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->O(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$i;->b:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    iput-boolean p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$i;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$i;->b:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    sget-object v1, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->g:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    invoke-static {v0, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->J(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;)V

    .line 2
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$i;->a:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$i;->b:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->p(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$i;->b:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->q(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$i;->b:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->r(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnGifListener onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c(II)V
    .locals 0

    return-void
.end method
