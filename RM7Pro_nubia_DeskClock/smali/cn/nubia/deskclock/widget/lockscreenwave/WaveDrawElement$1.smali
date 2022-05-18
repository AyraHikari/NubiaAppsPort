.class Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement$1;
.super Landroid/util/Property;
.source "WaveDrawElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    .local p2, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    iput-object p1, p0, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement$1;->this$0:Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;

    .prologue
    .line 45
    invoke-virtual {p1}, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->getSize()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    check-cast p1, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;

    invoke-virtual {p0, p1}, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement$1;->get(Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;Ljava/lang/Float;)V
    .locals 1
    .param p1, "object"    # Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 50
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;->setSize(F)V

    .line 51
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement$1;->set(Lcn/nubia/deskclock/widget/lockscreenwave/WaveDrawElement;Ljava/lang/Float;)V

    return-void
.end method
