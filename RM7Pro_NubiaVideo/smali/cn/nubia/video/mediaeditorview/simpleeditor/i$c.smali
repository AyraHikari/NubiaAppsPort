.class Lcn/nubia/video/mediaeditorview/simpleeditor/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/simpleeditor/i;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/simpleeditor/c;

.field final synthetic b:Lcn/nubia/video/mediaeditorview/simpleeditor/i;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/simpleeditor/i;Lcn/nubia/video/mediaeditorview/simpleeditor/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$c;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/i;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$c;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    int-to-float p1, p2

    .line 1
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$c;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/i;

    invoke-static {p2}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->C(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getMax()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 2
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$c;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/i;

    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$c;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/c;

    invoke-virtual {p3, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/c;->b(F)I

    move-result p1

    invoke-static {p2, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->E(Lcn/nubia/video/mediaeditorview/simpleeditor/i;I)I

    .line 3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$c;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/i;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->x(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddWordFrame()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$c;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/i;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->x(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddWordFrame()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getLayout()Lcn/nubia/video/mediaeditorview/textfilter/d;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$c;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/i;

    invoke-static {p2}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->D(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcn/nubia/video/mediaeditorview/textfilter/d;->setColor(I)V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$c;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/i;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->x(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddWordFrame()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcn/nubia/video/mediaeditorview/textfilter/b;->setSelect(Z)V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$c;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/i;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->x(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddWordFrame()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getLayout()Lcn/nubia/video/mediaeditorview/textfilter/d;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/video/mediaeditorview/textfilter/d;->setTextItem(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$c;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/i;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->x(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->x()V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
