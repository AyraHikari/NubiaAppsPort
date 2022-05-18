.class Lcom/android/setting/e$3;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setting/e;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/setting/e;


# direct methods
.method constructor <init>(Lcom/android/setting/e;Landroid/os/Handler;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/android/setting/e$3;->a:Lcom/android/setting/e;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 569
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 570
    iget-object p1, p0, Lcom/android/setting/e$3;->a:Lcom/android/setting/e;

    invoke-virtual {p1}, Lcom/android/setting/e;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "system_keys_navigationbar"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 571
    :goto_0
    iget-object p1, p0, Lcom/android/setting/e$3;->a:Lcom/android/setting/e;

    invoke-static {p1, v1}, Lcom/android/setting/e;->b(Lcom/android/setting/e;Z)V

    return-void
.end method
