.class Lcom/android/common/ui/a/a$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/ui/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/ui/a/a;


# direct methods
.method constructor <init>(Lcom/android/common/ui/a/a;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/android/common/ui/a/a$1;->a:Lcom/android/common/ui/a/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 20
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/common/ui/a/a$1;->a:Lcom/android/common/ui/a/a;

    invoke-static {p1}, Lcom/android/common/ui/a/a;->a(Lcom/android/common/ui/a/a;)Lcom/android/common/ui/a/a$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 23
    iget-object p1, p0, Lcom/android/common/ui/a/a$1;->a:Lcom/android/common/ui/a/a;

    invoke-static {p1}, Lcom/android/common/ui/a/a;->a(Lcom/android/common/ui/a/a;)Lcom/android/common/ui/a/a$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/common/ui/a/a$a;->a()V

    :cond_1
    :goto_0
    return-void
.end method
