.class Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->G(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/textfilter/i;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Lcn/nubia/video/mediaeditorview/textfilter/i;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$b;->c:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$b;->a:Lcn/nubia/video/mediaeditorview/textfilter/i;

    iput-object p3, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$b;->c:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->j(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Z)Z

    .line 2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$b;->a:Lcn/nubia/video/mediaeditorview/textfilter/i;

    iget-object p1, p1, Lcn/nubia/video/mediaeditorview/textfilter/i;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$b;->a:Lcn/nubia/video/mediaeditorview/textfilter/i;

    iget-object p1, p1, Lcn/nubia/video/mediaeditorview/textfilter/i;->c:Landroid/widget/EditText;

    .line 3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$b;->c:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->q(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getLayout()Lcn/nubia/video/mediaeditorview/textfilter/d;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$b;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/video/mediaeditorview/i;->c:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/video/mediaeditorview/textfilter/d;->setTextItem(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$b;->a:Lcn/nubia/video/mediaeditorview/textfilter/i;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/i;->c()V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$b;->c:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->x()V

    return-void
.end method
