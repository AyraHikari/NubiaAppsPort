.class Lcom/android/setting/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setting/a;->a(Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/setting/a;


# direct methods
.method constructor <init>(Lcom/android/setting/a;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/setting/a$1;->a:Lcom/android/setting/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/android/setting/a$1;->a:Lcom/android/setting/a;

    invoke-static {v0}, Lcom/android/setting/a;->a(Lcom/android/setting/a;)V

    .line 84
    iget-object v0, p0, Lcom/android/setting/a$1;->a:Lcom/android/setting/a;

    invoke-static {v0}, Lcom/android/setting/a;->b(Lcom/android/setting/a;)Lcom/android/setting/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/setting/a$1;->a:Lcom/android/setting/a;

    invoke-static {v0}, Lcom/android/setting/a;->b(Lcom/android/setting/a;)Lcom/android/setting/a$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/setting/a$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
