.class Lcom/android/common/ui/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/ui/f;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/ui/f;


# direct methods
.method constructor <init>(Lcom/android/common/ui/f;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/common/ui/f$1;->a:Lcom/android/common/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/android/common/ui/f$1;->a:Lcom/android/common/ui/f;

    invoke-static {p1}, Lcom/android/common/ui/f;->a(Lcom/android/common/ui/f;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/android/common/ui/f$1;->a:Lcom/android/common/ui/f;

    invoke-virtual {p1}, Lcom/android/common/ui/f;->e()V

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/android/common/ui/f$1;->a:Lcom/android/common/ui/f;

    invoke-virtual {p1}, Lcom/android/common/ui/f;->f()Z

    :goto_0
    return-void
.end method
