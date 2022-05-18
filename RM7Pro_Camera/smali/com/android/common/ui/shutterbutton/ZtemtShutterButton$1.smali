.class Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->drawableStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;


# direct methods
.method constructor <init>(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;Z)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$1;->b:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    iput-boolean p2, p0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$1;->b:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    iget-boolean v1, p0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$1;->a:Z

    invoke-static {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;Z)V

    return-void
.end method
