.class Lcom/android/common/ui/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/ui/a;->a(Ljava/lang/CharSequence;ILandroid/widget/FrameLayout;IIII)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/android/common/ui/a;


# direct methods
.method constructor <init>(Lcom/android/common/ui/a;I)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/android/common/ui/a$1;->b:Lcom/android/common/ui/a;

    iput p2, p0, Lcom/android/common/ui/a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 177
    invoke-static {}, Lcom/android/common/ui/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/a$1;->b:Lcom/android/common/ui/a;

    invoke-static {v0}, Lcom/android/common/ui/a;->a(Lcom/android/common/ui/a;)[Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/a$1;->b:Lcom/android/common/ui/a;

    invoke-static {v1}, Lcom/android/common/ui/a;->b(Lcom/android/common/ui/a;)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 183
    iget-object v1, p0, Lcom/android/common/ui/a$1;->b:Lcom/android/common/ui/a;

    invoke-static {v1}, Lcom/android/common/ui/a;->c(Lcom/android/common/ui/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    :cond_1
    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/common/ui/a$1;->b:Lcom/android/common/ui/a;

    invoke-static {v0}, Lcom/android/common/ui/a;->d(Lcom/android/common/ui/a;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    iget-object p1, p0, Lcom/android/common/ui/a$1;->b:Lcom/android/common/ui/a;

    iget v0, p0, Lcom/android/common/ui/a$1;->a:I

    invoke-static {p1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/common/ui/a;I)I

    .line 187
    iget-object p1, p0, Lcom/android/common/ui/a$1;->b:Lcom/android/common/ui/a;

    invoke-static {p1}, Lcom/android/common/ui/a;->e(Lcom/android/common/ui/a;)V

    return-void
.end method
