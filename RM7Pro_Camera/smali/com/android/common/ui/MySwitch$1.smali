.class final Lcom/android/common/ui/MySwitch$1;
.super Landroid/util/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/ui/MySwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/common/ui/MySwitch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 534
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/common/ui/MySwitch;)Ljava/lang/Float;
    .locals 0

    .line 537
    invoke-static {p1}, Lcom/android/common/ui/MySwitch;->a(Lcom/android/common/ui/MySwitch;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/common/ui/MySwitch;F)V
    .locals 0

    .line 542
    invoke-static {p1, p2}, Lcom/android/common/ui/MySwitch;->a(Lcom/android/common/ui/MySwitch;F)F

    .line 543
    invoke-virtual {p1}, Lcom/android/common/ui/MySwitch;->postInvalidate()V

    return-void
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 534
    check-cast p1, Lcom/android/common/ui/MySwitch;

    invoke-virtual {p0, p1}, Lcom/android/common/ui/MySwitch$1;->a(Lcom/android/common/ui/MySwitch;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 534
    check-cast p1, Lcom/android/common/ui/MySwitch;

    invoke-virtual {p0, p1, p2}, Lcom/android/common/ui/MySwitch$1;->a(Lcom/android/common/ui/MySwitch;F)V

    return-void
.end method
