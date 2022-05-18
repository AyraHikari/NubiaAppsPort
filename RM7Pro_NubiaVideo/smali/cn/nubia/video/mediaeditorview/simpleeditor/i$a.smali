.class Lcn/nubia/video/mediaeditorview/simpleeditor/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/simpleeditor/i;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/simpleeditor/i;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    sget-object v2, Lcn/nubia/video/mediaeditorview/textfilter/f;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/i;

    invoke-static {v2}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->w(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)Lcn/nubia/video/mediaeditorview/simpleeditor/TextFontPickerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 4
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/i;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->x(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddWordFrame()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/i;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->x(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddWordFrame()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getLayout()Lcn/nubia/video/mediaeditorview/textfilter/d;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcn/nubia/video/mediaeditorview/textfilter/d;->setFont(I)V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/i;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->x(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddWordFrame()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/video/mediaeditorview/textfilter/b;->setSelect(Z)V

    .line 7
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/i;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->x(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddWordFrame()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getLayout()Lcn/nubia/video/mediaeditorview/textfilter/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/video/mediaeditorview/textfilter/d;->setTextItem(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/i;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->x(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->x()V

    :cond_1
    return-void
.end method
