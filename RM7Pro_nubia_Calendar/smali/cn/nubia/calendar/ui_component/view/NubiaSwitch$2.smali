.class final Lcn/nubia/calendar/ui_component/view/NubiaSwitch$2;
.super Lcn/nubia/commonui/util/FloatProperty;
.source "NubiaSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/ui_component/view/NubiaSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/commonui/util/FloatProperty",
        "<",
        "Lcn/nubia/calendar/ui_component/view/NubiaSwitch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 1260
    invoke-direct {p0, p1}, Lcn/nubia/commonui/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcn/nubia/calendar/ui_component/view/NubiaSwitch;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcn/nubia/calendar/ui_component/view/NubiaSwitch;

    .prologue
    .line 1263
    invoke-static {p1}, Lcn/nubia/calendar/ui_component/view/NubiaSwitch;->access$100(Lcn/nubia/calendar/ui_component/view/NubiaSwitch;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1260
    check-cast p1, Lcn/nubia/calendar/ui_component/view/NubiaSwitch;

    invoke-virtual {p0, p1}, Lcn/nubia/calendar/ui_component/view/NubiaSwitch$2;->get(Lcn/nubia/calendar/ui_component/view/NubiaSwitch;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcn/nubia/calendar/ui_component/view/NubiaSwitch;F)V
    .locals 0
    .param p1, "object"    # Lcn/nubia/calendar/ui_component/view/NubiaSwitch;
    .param p2, "value"    # F

    .prologue
    .line 1268
    invoke-static {p1, p2}, Lcn/nubia/calendar/ui_component/view/NubiaSwitch;->access$200(Lcn/nubia/calendar/ui_component/view/NubiaSwitch;F)V

    .line 1269
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    .line 1260
    check-cast p1, Lcn/nubia/calendar/ui_component/view/NubiaSwitch;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/calendar/ui_component/view/NubiaSwitch$2;->setValue(Lcn/nubia/calendar/ui_component/view/NubiaSwitch;F)V

    return-void
.end method
