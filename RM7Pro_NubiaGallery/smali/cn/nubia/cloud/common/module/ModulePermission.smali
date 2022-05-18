.class public final enum Lcn/nubia/cloud/common/module/ModulePermission;
.super Ljava/lang/Enum;
.source "ModulePermission.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/cloud/common/module/ModulePermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcn/nubia/cloud/common/module/ModulePermission;

.field public static final enum nubiaRomOnly:Lcn/nubia/cloud/common/module/ModulePermission;

.field public static final enum password:Lcn/nubia/cloud/common/module/ModulePermission;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcn/nubia/cloud/common/module/ModulePermission;

    const-string v1, "nubiaRomOnly"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/cloud/common/module/ModulePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/cloud/common/module/ModulePermission;->nubiaRomOnly:Lcn/nubia/cloud/common/module/ModulePermission;

    .line 5
    new-instance v1, Lcn/nubia/cloud/common/module/ModulePermission;

    const-string v3, "password"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/cloud/common/module/ModulePermission;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/cloud/common/module/ModulePermission;->password:Lcn/nubia/cloud/common/module/ModulePermission;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/nubia/cloud/common/module/ModulePermission;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcn/nubia/cloud/common/module/ModulePermission;->ENUM$VALUES:[Lcn/nubia/cloud/common/module/ModulePermission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/cloud/common/module/ModulePermission;
    .locals 1

    .line 1
    const-class v0, Lcn/nubia/cloud/common/module/ModulePermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/cloud/common/module/ModulePermission;

    return-object p0
.end method

.method public static values()[Lcn/nubia/cloud/common/module/ModulePermission;
    .locals 4

    .line 1
    sget-object v0, Lcn/nubia/cloud/common/module/ModulePermission;->ENUM$VALUES:[Lcn/nubia/cloud/common/module/ModulePermission;

    array-length v1, v0

    new-array v2, v1, [Lcn/nubia/cloud/common/module/ModulePermission;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
