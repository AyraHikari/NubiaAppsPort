.class Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->G(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/textfilter/h;

.field final synthetic b:Lcn/nubia/video/mediaeditorview/textfilter/i;

.field final synthetic c:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Lcn/nubia/video/mediaeditorview/textfilter/h;Lcn/nubia/video/mediaeditorview/textfilter/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$c;->c:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$c;->a:Lcn/nubia/video/mediaeditorview/textfilter/h;

    iput-object p3, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$c;->b:Lcn/nubia/video/mediaeditorview/textfilter/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$c;->c:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->i(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$c;->c:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->q(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getLayout()Lcn/nubia/video/mediaeditorview/textfilter/d;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$c;->a:Lcn/nubia/video/mediaeditorview/textfilter/h;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/textfilter/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/video/mediaeditorview/textfilter/d;->setTextItem(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$c;->b:Lcn/nubia/video/mediaeditorview/textfilter/i;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/i;->c()V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$c;->c:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->x()V

    :cond_0
    return-void
.end method
