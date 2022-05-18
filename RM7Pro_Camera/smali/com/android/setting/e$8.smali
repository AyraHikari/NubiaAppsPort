.class Lcom/android/setting/e$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 329
    iput-object p1, p0, Lcom/android/setting/e$8;->a:Lcom/android/setting/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "MoreSettingsFragment"

    const-string p2, "mExpandDialogRootLayout onTouch"

    .line 333
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object p1, p0, Lcom/android/setting/e$8;->a:Lcom/android/setting/e;

    invoke-static {p1}, Lcom/android/setting/e;->i(Lcom/android/setting/e;)V

    const/4 p1, 0x1

    return p1
.end method
