.class Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;


# direct methods
.method private constructor <init>(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$a;->a:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$a;-><init>(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$a;->a:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-static {p1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;)Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$a;->a:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-static {p1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;)Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;->c()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
