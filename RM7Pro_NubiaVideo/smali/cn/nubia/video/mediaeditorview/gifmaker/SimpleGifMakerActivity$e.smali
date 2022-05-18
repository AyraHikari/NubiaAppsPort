.class Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->N()V
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
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$e;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$e;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$e;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/nubia/video/permission/c;->a:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcn/nubia/video/permission/b;->c(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$e;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->f(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)V

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$e;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->g(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$e;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->t(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;Z)Z

    .line 5
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity$e;->a:Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;->D(Lcn/nubia/video/mediaeditorview/gifmaker/SimpleGifMakerActivity;)V

    :goto_0
    return-void
.end method
