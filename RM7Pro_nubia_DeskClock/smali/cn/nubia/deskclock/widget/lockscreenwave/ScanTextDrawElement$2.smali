.class Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement$2;
.super Landroid/util/Property;
.source "ScanTextDrawElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    .local p2, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    iput-object p1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement$2;->this$0:Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;

    .prologue
    .line 53
    invoke-virtual {p1}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    check-cast p1, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;

    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement$2;->get(Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;Ljava/lang/Float;)V
    .locals 1
    .param p1, "object"    # Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 58
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;->setAlpha(F)V

    .line 59
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement$2;->set(Lcn/nubia/deskclock/widget/lockscreenwave/ScanTextDrawElement;Ljava/lang/Float;)V

    return-void
.end method
