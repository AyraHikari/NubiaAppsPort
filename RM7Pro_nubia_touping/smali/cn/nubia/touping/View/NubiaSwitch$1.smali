.class final Lcn/nubia/touping/View/NubiaSwitch$1;
.super Lcn/nubia/touping/Utils/util/FloatProperty;
.source "NubiaSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/View/NubiaSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/touping/Utils/util/FloatProperty",
        "<",
        "Lcn/nubia/touping/View/NubiaSwitch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1258
    invoke-direct {p0, p1}, Lcn/nubia/touping/Utils/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcn/nubia/touping/View/NubiaSwitch;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcn/nubia/touping/View/NubiaSwitch;

    .prologue
    .line 1261
    invoke-static {p1}, Lcn/nubia/touping/View/NubiaSwitch;->access$000(Lcn/nubia/touping/View/NubiaSwitch;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1258
    check-cast p1, Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {p0, p1}, Lcn/nubia/touping/View/NubiaSwitch$1;->get(Lcn/nubia/touping/View/NubiaSwitch;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcn/nubia/touping/View/NubiaSwitch;F)V
    .locals 0
    .param p1, "object"    # Lcn/nubia/touping/View/NubiaSwitch;
    .param p2, "value"    # F

    .prologue
    .line 1266
    invoke-static {p1, p2}, Lcn/nubia/touping/View/NubiaSwitch;->access$100(Lcn/nubia/touping/View/NubiaSwitch;F)V

    .line 1267
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    .line 1258
    check-cast p1, Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/touping/View/NubiaSwitch$1;->setValue(Lcn/nubia/touping/View/NubiaSwitch;F)V

    return-void
.end method
