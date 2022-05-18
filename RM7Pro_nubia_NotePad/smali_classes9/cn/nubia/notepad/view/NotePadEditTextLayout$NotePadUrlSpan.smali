.class Lcn/nubia/notepad/view/NotePadEditTextLayout$NotePadUrlSpan;
.super Landroid/text/style/ClickableSpan;
.source "NotePadEditTextLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/view/NotePadEditTextLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotePadUrlSpan"
.end annotation


# instance fields
.field private mTextLayout:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/notepad/view/NotePadEditTextLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/nubia/notepad/view/NotePadEditTextLayout;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "textLayout"    # Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .prologue
    .line 584
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 585
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$NotePadUrlSpan;->mUrl:Ljava/lang/String;

    .line 586
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$NotePadUrlSpan;->mTextLayout:Ljava/lang/ref/WeakReference;

    .line 587
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 591
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$NotePadUrlSpan;->mTextLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 592
    .local v0, "textLayout":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$NotePadUrlSpan;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 593
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->access$402(Lcn/nubia/notepad/view/NotePadEditTextLayout;Z)Z

    .line 594
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout$NotePadUrlSpan;->mUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->access$500(Lcn/nubia/notepad/view/NotePadEditTextLayout;Ljava/lang/String;)V

    .line 596
    :cond_0
    return-void
.end method
