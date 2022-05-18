.class public final enum Lcn/nubia/cloud/service/common/SyncType;
.super Ljava/lang/Enum;
.source "SyncType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/cloud/service/common/SyncType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/cloud/service/common/SyncType;

.field public static final enum CALENDAR:Lcn/nubia/cloud/service/common/SyncType;

.field public static final enum CALL_LOG:Lcn/nubia/cloud/service/common/SyncType;

.field public static final enum CONTACTS:Lcn/nubia/cloud/service/common/SyncType;

.field public static final enum FILE:Lcn/nubia/cloud/service/common/SyncType;

.field public static final enum NOTEPAD:Lcn/nubia/cloud/service/common/SyncType;

.field public static final enum SECURITY:Lcn/nubia/cloud/service/common/SyncType;

.field public static final enum SMS:Lcn/nubia/cloud/service/common/SyncType;

.field public static final enum UNKNOWN:Lcn/nubia/cloud/service/common/SyncType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcn/nubia/cloud/service/common/SyncType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcn/nubia/cloud/service/common/SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/cloud/service/common/SyncType;->UNKNOWN:Lcn/nubia/cloud/service/common/SyncType;

    .line 6
    new-instance v0, Lcn/nubia/cloud/service/common/SyncType;

    const-string v1, "CONTACTS"

    invoke-direct {v0, v1, v5, v5}, Lcn/nubia/cloud/service/common/SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/cloud/service/common/SyncType;->CONTACTS:Lcn/nubia/cloud/service/common/SyncType;

    .line 7
    new-instance v0, Lcn/nubia/cloud/service/common/SyncType;

    const-string v1, "CALL_LOG"

    invoke-direct {v0, v1, v6, v6}, Lcn/nubia/cloud/service/common/SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/cloud/service/common/SyncType;->CALL_LOG:Lcn/nubia/cloud/service/common/SyncType;

    .line 8
    new-instance v0, Lcn/nubia/cloud/service/common/SyncType;

    const-string v1, "CALENDAR"

    invoke-direct {v0, v1, v7, v7}, Lcn/nubia/cloud/service/common/SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/cloud/service/common/SyncType;->CALENDAR:Lcn/nubia/cloud/service/common/SyncType;

    .line 9
    new-instance v0, Lcn/nubia/cloud/service/common/SyncType;

    const-string v1, "NOTEPAD"

    invoke-direct {v0, v1, v8, v8}, Lcn/nubia/cloud/service/common/SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/cloud/service/common/SyncType;->NOTEPAD:Lcn/nubia/cloud/service/common/SyncType;

    .line 10
    new-instance v0, Lcn/nubia/cloud/service/common/SyncType;

    const-string v1, "FILE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/cloud/service/common/SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/cloud/service/common/SyncType;->FILE:Lcn/nubia/cloud/service/common/SyncType;

    .line 11
    new-instance v0, Lcn/nubia/cloud/service/common/SyncType;

    const-string v1, "SECURITY"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/cloud/service/common/SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/cloud/service/common/SyncType;->SECURITY:Lcn/nubia/cloud/service/common/SyncType;

    .line 12
    new-instance v0, Lcn/nubia/cloud/service/common/SyncType;

    const-string v1, "SMS"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/cloud/service/common/SyncType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/cloud/service/common/SyncType;->SMS:Lcn/nubia/cloud/service/common/SyncType;

    .line 4
    const/16 v0, 0x8

    new-array v0, v0, [Lcn/nubia/cloud/service/common/SyncType;

    sget-object v1, Lcn/nubia/cloud/service/common/SyncType;->UNKNOWN:Lcn/nubia/cloud/service/common/SyncType;

    aput-object v1, v0, v4

    sget-object v1, Lcn/nubia/cloud/service/common/SyncType;->CONTACTS:Lcn/nubia/cloud/service/common/SyncType;

    aput-object v1, v0, v5

    sget-object v1, Lcn/nubia/cloud/service/common/SyncType;->CALL_LOG:Lcn/nubia/cloud/service/common/SyncType;

    aput-object v1, v0, v6

    sget-object v1, Lcn/nubia/cloud/service/common/SyncType;->CALENDAR:Lcn/nubia/cloud/service/common/SyncType;

    aput-object v1, v0, v7

    sget-object v1, Lcn/nubia/cloud/service/common/SyncType;->NOTEPAD:Lcn/nubia/cloud/service/common/SyncType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcn/nubia/cloud/service/common/SyncType;->FILE:Lcn/nubia/cloud/service/common/SyncType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/nubia/cloud/service/common/SyncType;->SECURITY:Lcn/nubia/cloud/service/common/SyncType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcn/nubia/cloud/service/common/SyncType;->SMS:Lcn/nubia/cloud/service/common/SyncType;

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/cloud/service/common/SyncType;->$VALUES:[Lcn/nubia/cloud/service/common/SyncType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcn/nubia/cloud/service/common/SyncType;->mValue:I

    .line 17
    return-void
.end method

.method public static getType(Ljava/lang/String;)Lcn/nubia/cloud/service/common/SyncType;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {}, Lcn/nubia/cloud/service/common/SyncType;->values()[Lcn/nubia/cloud/service/common/SyncType;

    move-result-object v0

    .local v0, "arr$":[Lcn/nubia/cloud/service/common/SyncType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 34
    .local v3, "syncType":Lcn/nubia/cloud/service/common/SyncType;
    invoke-virtual {v3}, Lcn/nubia/cloud/service/common/SyncType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    .end local v3    # "syncType":Lcn/nubia/cloud/service/common/SyncType;
    :goto_1
    return-object v3

    .line 33
    .restart local v3    # "syncType":Lcn/nubia/cloud/service/common/SyncType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v3    # "syncType":Lcn/nubia/cloud/service/common/SyncType;
    :cond_1
    sget-object v3, Lcn/nubia/cloud/service/common/SyncType;->UNKNOWN:Lcn/nubia/cloud/service/common/SyncType;

    goto :goto_1
.end method

.method public static valueOf(I)Lcn/nubia/cloud/service/common/SyncType;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 24
    invoke-static {}, Lcn/nubia/cloud/service/common/SyncType;->values()[Lcn/nubia/cloud/service/common/SyncType;

    move-result-object v0

    .local v0, "arr$":[Lcn/nubia/cloud/service/common/SyncType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 25
    .local v3, "syncType":Lcn/nubia/cloud/service/common/SyncType;
    iget v4, v3, Lcn/nubia/cloud/service/common/SyncType;->mValue:I

    if-ne v4, p0, :cond_0

    .line 29
    .end local v3    # "syncType":Lcn/nubia/cloud/service/common/SyncType;
    :goto_1
    return-object v3

    .line 24
    .restart local v3    # "syncType":Lcn/nubia/cloud/service/common/SyncType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    .end local v3    # "syncType":Lcn/nubia/cloud/service/common/SyncType;
    :cond_1
    sget-object v3, Lcn/nubia/cloud/service/common/SyncType;->UNKNOWN:Lcn/nubia/cloud/service/common/SyncType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/cloud/service/common/SyncType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcn/nubia/cloud/service/common/SyncType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/service/common/SyncType;

    return-object v0
.end method

.method public static values()[Lcn/nubia/cloud/service/common/SyncType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcn/nubia/cloud/service/common/SyncType;->$VALUES:[Lcn/nubia/cloud/service/common/SyncType;

    invoke-virtual {v0}, [Lcn/nubia/cloud/service/common/SyncType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/cloud/service/common/SyncType;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcn/nubia/cloud/service/common/SyncType;->mValue:I

    return v0
.end method
