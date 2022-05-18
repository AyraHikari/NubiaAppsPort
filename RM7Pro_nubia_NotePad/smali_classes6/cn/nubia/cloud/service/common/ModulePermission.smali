.class public final enum Lcn/nubia/cloud/service/common/ModulePermission;
.super Ljava/lang/Enum;
.source "ModulePermission.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/cloud/service/common/ModulePermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/cloud/service/common/ModulePermission;

.field public static final enum VIP:Lcn/nubia/cloud/service/common/ModulePermission;

.field public static final enum nubiaRomOnly:Lcn/nubia/cloud/service/common/ModulePermission;

.field public static final enum password:Lcn/nubia/cloud/service/common/ModulePermission;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcn/nubia/cloud/service/common/ModulePermission;

    const-string v1, "nubiaRomOnly"

    invoke-direct {v0, v1, v2}, Lcn/nubia/cloud/service/common/ModulePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/cloud/service/common/ModulePermission;->nubiaRomOnly:Lcn/nubia/cloud/service/common/ModulePermission;

    .line 5
    new-instance v0, Lcn/nubia/cloud/service/common/ModulePermission;

    const-string v1, "password"

    invoke-direct {v0, v1, v3}, Lcn/nubia/cloud/service/common/ModulePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/cloud/service/common/ModulePermission;->password:Lcn/nubia/cloud/service/common/ModulePermission;

    .line 6
    new-instance v0, Lcn/nubia/cloud/service/common/ModulePermission;

    const-string v1, "VIP"

    invoke-direct {v0, v1, v4}, Lcn/nubia/cloud/service/common/ModulePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/cloud/service/common/ModulePermission;->VIP:Lcn/nubia/cloud/service/common/ModulePermission;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/cloud/service/common/ModulePermission;

    sget-object v1, Lcn/nubia/cloud/service/common/ModulePermission;->nubiaRomOnly:Lcn/nubia/cloud/service/common/ModulePermission;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/cloud/service/common/ModulePermission;->password:Lcn/nubia/cloud/service/common/ModulePermission;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/cloud/service/common/ModulePermission;->VIP:Lcn/nubia/cloud/service/common/ModulePermission;

    aput-object v1, v0, v4

    sput-object v0, Lcn/nubia/cloud/service/common/ModulePermission;->$VALUES:[Lcn/nubia/cloud/service/common/ModulePermission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/cloud/service/common/ModulePermission;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcn/nubia/cloud/service/common/ModulePermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/service/common/ModulePermission;

    return-object v0
.end method

.method public static values()[Lcn/nubia/cloud/service/common/ModulePermission;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcn/nubia/cloud/service/common/ModulePermission;->$VALUES:[Lcn/nubia/cloud/service/common/ModulePermission;

    invoke-virtual {v0}, [Lcn/nubia/cloud/service/common/ModulePermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/cloud/service/common/ModulePermission;

    return-object v0
.end method
