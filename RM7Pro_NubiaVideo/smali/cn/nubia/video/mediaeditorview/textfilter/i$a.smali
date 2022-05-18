.class Lcn/nubia/video/mediaeditorview/textfilter/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/textfilter/i;->d(Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/textfilter/i;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/textfilter/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/i$a;->a:Lcn/nubia/video/mediaeditorview/textfilter/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/i$a;->a:Lcn/nubia/video/mediaeditorview/textfilter/i;

    invoke-static {p2}, Lcn/nubia/video/mediaeditorview/textfilter/i;->a(Lcn/nubia/video/mediaeditorview/textfilter/i;)Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getLayout()Lcn/nubia/video/mediaeditorview/textfilter/d;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/nubia/video/mediaeditorview/textfilter/d;->setTextItem(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/i$a;->a:Lcn/nubia/video/mediaeditorview/textfilter/i;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/i;->b(Lcn/nubia/video/mediaeditorview/textfilter/i;)Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->x()V

    return-void
.end method
