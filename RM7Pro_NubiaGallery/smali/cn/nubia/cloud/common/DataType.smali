.class public final enum Lcn/nubia/cloud/common/DataType;
.super Ljava/lang/Enum;
.source "DataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/cloud/common/DataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Binary:Lcn/nubia/cloud/common/DataType;

.field public static final enum Boolean:Lcn/nubia/cloud/common/DataType;

.field private static final synthetic ENUM$VALUES:[Lcn/nubia/cloud/common/DataType;

.field public static final enum Integer:Lcn/nubia/cloud/common/DataType;

.field public static final enum Long:Lcn/nubia/cloud/common/DataType;

.field public static final enum String:Lcn/nubia/cloud/common/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 4
    new-instance v0, Lcn/nubia/cloud/common/DataType;

    const-string v1, "String"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/cloud/common/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/cloud/common/DataType;->String:Lcn/nubia/cloud/common/DataType;

    .line 5
    new-instance v1, Lcn/nubia/cloud/common/DataType;

    const-string v3, "Integer"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/cloud/common/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/cloud/common/DataType;->Integer:Lcn/nubia/cloud/common/DataType;

    .line 6
    new-instance v3, Lcn/nubia/cloud/common/DataType;

    const-string v5, "Long"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/nubia/cloud/common/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/nubia/cloud/common/DataType;->Long:Lcn/nubia/cloud/common/DataType;

    .line 7
    new-instance v5, Lcn/nubia/cloud/common/DataType;

    const-string v7, "Boolean"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/nubia/cloud/common/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/nubia/cloud/common/DataType;->Boolean:Lcn/nubia/cloud/common/DataType;

    .line 8
    new-instance v7, Lcn/nubia/cloud/common/DataType;

    const-string v9, "Binary"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/nubia/cloud/common/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/nubia/cloud/common/DataType;->Binary:Lcn/nubia/cloud/common/DataType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcn/nubia/cloud/common/DataType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 3
    sput-object v9, Lcn/nubia/cloud/common/DataType;->ENUM$VALUES:[Lcn/nubia/cloud/common/DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/cloud/common/DataType;
    .locals 1

    .line 1
    const-class v0, Lcn/nubia/cloud/common/DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/cloud/common/DataType;

    return-object p0
.end method

.method public static values()[Lcn/nubia/cloud/common/DataType;
    .locals 4

    .line 1
    sget-object v0, Lcn/nubia/cloud/common/DataType;->ENUM$VALUES:[Lcn/nubia/cloud/common/DataType;

    array-length v1, v0

    new-array v2, v1, [Lcn/nubia/cloud/common/DataType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
