.class Lcom/android/setting/e$7;
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

    .line 318
    iput-object p1, p0, Lcom/android/setting/e$7;->a:Lcom/android/setting/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 322
    iget-object p1, p0, Lcom/android/setting/e$7;->a:Lcom/android/setting/e;

    invoke-static {p1}, Lcom/android/setting/e;->g(Lcom/android/setting/e;)Lcom/android/setting/e$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 323
    iget-object p1, p0, Lcom/android/setting/e$7;->a:Lcom/android/setting/e;

    invoke-static {p1}, Lcom/android/setting/e;->g(Lcom/android/setting/e;)Lcom/android/setting/e$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/setting/e$b;->a()V

    :cond_0
    return-void
.end method
