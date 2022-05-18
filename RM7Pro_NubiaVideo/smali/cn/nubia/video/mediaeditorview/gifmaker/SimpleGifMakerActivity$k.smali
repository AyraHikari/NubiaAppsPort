.class Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$k;->b:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$k;->b:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->v(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/m;->h(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$k;->b:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->s(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->u(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;ZLjava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$k;->b:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$k;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->u(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method
