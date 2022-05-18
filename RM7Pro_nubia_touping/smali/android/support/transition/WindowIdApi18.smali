.class Landroid/support/transition/WindowIdApi18;
.super Ljava/lang/Object;
.source "WindowIdApi18.java"

# interfaces
.implements Landroid/support/transition/WindowIdImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x12
.end annotation


# instance fields
.field private final mWindowId:Landroid/view/WindowId;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 34
    instance-of v0, p1, Landroid/support/transition/WindowIdApi18;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/transition/WindowIdApi18;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Landroid/support/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    iget-object v1, p0, Landroid/support/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    invoke-virtual {v0, v1}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Landroid/support/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    invoke-virtual {v0}, Landroid/view/WindowId;->hashCode()I

    move-result v0

    return v0
.end method
