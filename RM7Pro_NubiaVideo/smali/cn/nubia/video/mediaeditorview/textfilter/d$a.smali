.class Lcn/nubia/video/mediaeditorview/textfilter/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/textfilter/d;->b(Lcn/nubia/video/mediaeditorview/textfilter/d;Lcn/nubia/video/mediaeditorview/textfilter/d$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/textfilter/d;

.field final synthetic b:Lcn/nubia/video/mediaeditorview/textfilter/d$b;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/textfilter/d;Lcn/nubia/video/mediaeditorview/textfilter/d;Lcn/nubia/video/mediaeditorview/textfilter/d$b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/d$a;->a:Lcn/nubia/video/mediaeditorview/textfilter/d;

    iput-object p3, p0, Lcn/nubia/video/mediaeditorview/textfilter/d$a;->b:Lcn/nubia/video/mediaeditorview/textfilter/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/d$a;->a:Lcn/nubia/video/mediaeditorview/textfilter/d;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/d$a;->b:Lcn/nubia/video/mediaeditorview/textfilter/d$b;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/d$a;->a:Lcn/nubia/video/mediaeditorview/textfilter/d;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/d$a;->a:Lcn/nubia/video/mediaeditorview/textfilter/d;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcn/nubia/video/mediaeditorview/textfilter/d$b;->a(II)V

    return-void
.end method
