.class final Lcn/nubia/commonui/widget/NubiaSwitch$1;
.super Lcn/nubia/commonui/util/FloatProperty;
.source "NubiaSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/NubiaSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/commonui/util/FloatProperty<",
        "Lcn/nubia/commonui/widget/NubiaSwitch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1257
    invoke-direct {p0, p1}, Lcn/nubia/commonui/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcn/nubia/commonui/widget/NubiaSwitch;)Ljava/lang/Float;
    .locals 0

    .line 1260
    invoke-static {p1}, Lcn/nubia/commonui/widget/NubiaSwitch;->access$000(Lcn/nubia/commonui/widget/NubiaSwitch;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1257
    check-cast p1, Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {p0, p1}, Lcn/nubia/commonui/widget/NubiaSwitch$1;->get(Lcn/nubia/commonui/widget/NubiaSwitch;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcn/nubia/commonui/widget/NubiaSwitch;F)V
    .locals 0

    .line 1265
    invoke-static {p1, p2}, Lcn/nubia/commonui/widget/NubiaSwitch;->access$100(Lcn/nubia/commonui/widget/NubiaSwitch;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1257
    check-cast p1, Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/commonui/widget/NubiaSwitch$1;->setValue(Lcn/nubia/commonui/widget/NubiaSwitch;F)V

    return-void
.end method
