.class Lcn/nubia/a/b$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/a/b;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/a/b;


# direct methods
.method constructor <init>(Lcn/nubia/a/b;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcn/nubia/a/b$7;->a:Lcn/nubia/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .line 517
    iget-object v0, p0, Lcn/nubia/a/b$7;->a:Lcn/nubia/a/b;

    invoke-static {v0}, Lcn/nubia/a/b;->j(Lcn/nubia/a/b;)[Landroid/view/View;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 518
    sget v5, Lcn/nubia/a/h$c;->a:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/common/ui/RotateTextView;

    .line 519
    invoke-virtual {v4}, Lcom/android/common/ui/RotateTextView;->getLineCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    const/4 v5, 0x6

    .line 520
    invoke-virtual {v4, v5}, Lcom/android/common/ui/RotateTextView;->setCompoundDrawablePadding(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 523
    :cond_1
    iget-object v0, p0, Lcn/nubia/a/b$7;->a:Lcn/nubia/a/b;

    invoke-static {v0}, Lcn/nubia/a/b;->k(Lcn/nubia/a/b;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return v2
.end method
