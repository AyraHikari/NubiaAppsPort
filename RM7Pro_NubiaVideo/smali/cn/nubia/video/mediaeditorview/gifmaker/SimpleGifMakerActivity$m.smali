.class Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$m;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "m"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$m;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3f3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$m;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    sget-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;->j:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;

    invoke-static {p1, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->J(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$n;)V

    :goto_0
    return-void
.end method
