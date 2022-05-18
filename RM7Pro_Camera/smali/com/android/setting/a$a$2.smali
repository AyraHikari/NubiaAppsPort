.class Lcom/android/setting/a$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setting/a$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/setting/a$a;


# direct methods
.method constructor <init>(Lcom/android/setting/a$a;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/android/setting/a$a$2;->a:Lcom/android/setting/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/setting/a$a$2;->a:Lcom/android/setting/a$a;

    invoke-virtual {v0}, Lcom/android/setting/a$a;->dismiss()V

    .line 164
    iget-object v0, p0, Lcom/android/setting/a$a$2;->a:Lcom/android/setting/a$a;

    invoke-static {v0}, Lcom/android/setting/a$a;->a(Lcom/android/setting/a$a;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/setting/a$a$2;->a:Lcom/android/setting/a$a;

    invoke-static {v0}, Lcom/android/setting/a$a;->c(Lcom/android/setting/a$a;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
