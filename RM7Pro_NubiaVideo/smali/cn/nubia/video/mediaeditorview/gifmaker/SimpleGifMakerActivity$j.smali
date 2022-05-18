.class Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$j;
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
.field final synthetic a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$j;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$j;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->s(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->u(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;ZLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$j;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    iput-boolean v2, v0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->x:Z

    return-void
.end method
