.class Lcom/android/setting/e$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setting/e;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/setting/e;


# direct methods
.method constructor <init>(Lcom/android/setting/e;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/android/setting/e$6;->a:Lcom/android/setting/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 300
    iget-object p1, p0, Lcom/android/setting/e$6;->a:Lcom/android/setting/e;

    invoke-static {p1}, Lcom/android/setting/e;->f(Lcom/android/setting/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 301
    iget-object p1, p0, Lcom/android/setting/e$6;->a:Lcom/android/setting/e;

    invoke-virtual {p1}, Lcom/android/setting/e;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/android/setting/e$6;->a:Lcom/android/setting/e;

    invoke-static {p1}, Lcom/android/setting/e;->g(Lcom/android/setting/e;)Lcom/android/setting/e$b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 304
    iget-object p1, p0, Lcom/android/setting/e$6;->a:Lcom/android/setting/e;

    invoke-static {p1}, Lcom/android/setting/e;->h(Lcom/android/setting/e;)Lcom/android/setting/a;

    move-result-object p1

    if-nez p1, :cond_1

    .line 305
    iget-object p1, p0, Lcom/android/setting/e$6;->a:Lcom/android/setting/e;

    invoke-static {p1}, Lcom/android/setting/e;->g(Lcom/android/setting/e;)Lcom/android/setting/e$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/setting/e$b;->b()V

    goto :goto_0

    .line 306
    :cond_1
    iget-object p1, p0, Lcom/android/setting/e$6;->a:Lcom/android/setting/e;

    invoke-static {p1}, Lcom/android/setting/e;->h(Lcom/android/setting/e;)Lcom/android/setting/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/setting/a;->b()Z

    move-result p1

    if-nez p1, :cond_2

    .line 307
    iget-object p1, p0, Lcom/android/setting/e$6;->a:Lcom/android/setting/e;

    invoke-static {p1}, Lcom/android/setting/e;->g(Lcom/android/setting/e;)Lcom/android/setting/e$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/setting/e$b;->b()V

    :cond_2
    :goto_0
    return-void
.end method
