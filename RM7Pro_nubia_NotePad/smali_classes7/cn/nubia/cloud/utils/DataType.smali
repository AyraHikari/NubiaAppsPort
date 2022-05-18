.class public final enum Lcn/nubia/cloud/utils/DataType;
.super Ljava/lang/Enum;
.source "DataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/cloud/utils/DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/cloud/utils/DataType;

.field public static final enum Binary:Lcn/nubia/cloud/utils/DataType;

.field public static final enum Boolean:Lcn/nubia/cloud/utils/DataType;

.field public static final enum Integer:Lcn/nubia/cloud/utils/DataType;

.field public static final enum Long:Lcn/nubia/cloud/utils/DataType;

.field public static final enum String:Lcn/nubia/cloud/utils/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcn/nubia/cloud/utils/DataType;

    const-string v1, "String"

    invoke-direct {v0, v1, v2}, Lcn/nubia/cloud/utils/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/cloud/utils/DataType;->String:Lcn/nubia/cloud/utils/DataType;

    .line 5
    new-instance v0, Lcn/nubia/cloud/utils/DataType;

    const-string v1, "Integer"

    invoke-direct {v0, v1, v3}, Lcn/nubia/cloud/utils/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/cloud/utils/DataType;->Integer:Lcn/nubia/cloud/utils/DataType;

    .line 6
    new-instance v0, Lcn/nubia/cloud/utils/DataType;

    const-string v1, "Long"

    invoke-direct {v0, v1, v4}, Lcn/nubia/cloud/utils/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/cloud/utils/DataType;->Long:Lcn/nubia/cloud/utils/DataType;

    .line 7
    new-instance v0, Lcn/nubia/cloud/utils/DataType;

    const-string v1, "Boolean"

    invoke-direct {v0, v1, v5}, Lcn/nubia/cloud/utils/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/cloud/utils/DataType;->Boolean:Lcn/nubia/cloud/utils/DataType;

    .line 8
    new-instance v0, Lcn/nubia/cloud/utils/DataType;

    const-string v1, "Binary"

    invoke-direct {v0, v1, v6}, Lcn/nubia/cloud/utils/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/cloud/utils/DataType;->Binary:Lcn/nubia/cloud/utils/DataType;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcn/nubia/cloud/utils/DataType;

    sget-object v1, Lcn/nubia/cloud/utils/DataType;->String:Lcn/nubia/cloud/utils/DataType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/cloud/utils/DataType;->Integer:Lcn/nubia/cloud/utils/DataType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/cloud/utils/DataType;->Long:Lcn/nubia/cloud/utils/DataType;

    aput-object v1, v0, v4

    sget-object v1, Lcn/nubia/cloud/utils/DataType;->Boolean:Lcn/nubia/cloud/utils/DataType;

    aput-object v1, v0, v5

    sget-object v1, Lcn/nubia/cloud/utils/DataType;->Binary:Lcn/nubia/cloud/utils/DataType;

    aput-object v1, v0, v6

    sput-object v0, Lcn/nubia/cloud/utils/DataType;->$VALUES:[Lcn/nubia/cloud/utils/DataType;

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

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/cloud/utils/DataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcn/nubia/cloud/utils/DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/utils/DataType;

    return-object v0
.end method

.method public static values()[Lcn/nubia/cloud/utils/DataType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcn/nubia/cloud/utils/DataType;->$VALUES:[Lcn/nubia/cloud/utils/DataType;

    invoke-virtual {v0}, [Lcn/nubia/cloud/utils/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/cloud/utils/DataType;

    return-object v0
.end method
