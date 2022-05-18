.class public final enum Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;
.super Ljava/lang/Enum;
.source "ConstantPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/common/ConstantPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

.field public static final enum API:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

.field public static final enum BANNER:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

.field public static final enum INSERT:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

.field public static final enum LOCKAD:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

.field public static final enum NATIVE:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

.field public static final enum REWARDVIDEO:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

.field public static final enum SEARCH:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

.field public static final enum SPLASH:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;


# instance fields
.field private name:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 32
    new-instance v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v1, "BANNER"

    const/4 v2, 0x0

    const-string v3, "\u6a2a\u5e45\u5e7f\u544a"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->BANNER:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    new-instance v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v1, "SPLASH"

    const-string v2, "\u5f00\u5c4f\u5e7f\u544a"

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->SPLASH:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    new-instance v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v1, "INSERT"

    const-string v2, "\u63d2\u5c4f\u5e7f\u544a"

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->INSERT:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    new-instance v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v1, "NATIVE"

    const-string v2, "\u539f\u751f\u5e7f\u544a"

    invoke-direct {v0, v1, v7, v2, v8}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->NATIVE:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    new-instance v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v1, "API"

    const-string v2, "API\u5e7f\u544a"

    invoke-direct {v0, v1, v8, v2, v9}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->API:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    new-instance v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v1, "LOCKAD"

    const-string v2, "\u9501\u5c4f\u5e7f\u544a"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->LOCKAD:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    new-instance v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v1, "SEARCH"

    const/4 v2, 0x6

    const-string v3, "\u641c\u7d22\u5e7f\u544a"

    const/16 v4, 0x65

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->SEARCH:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    new-instance v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const-string v1, "REWARDVIDEO"

    const/4 v2, 0x7

    const-string v3, "\u6fc0\u52b1\u89c6\u9891"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->REWARDVIDEO:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    const/4 v1, 0x0

    sget-object v2, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->BANNER:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->SPLASH:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->INSERT:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->NATIVE:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->API:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->LOCKAD:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->SEARCH:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->REWARDVIDEO:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->$VALUES:[Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->name:Ljava/lang/String;

    .line 38
    iput p4, p0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->type:I

    .line 39
    return-void
.end method

.method public static getAdTypeByType(I)Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;
    .locals 5
    .param p0, "type"    # I

    .prologue
    .line 42
    invoke-static {}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->values()[Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    move-result-object v1

    .line 43
    .local v1, "values":[Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 44
    .local v0, "a":Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;
    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->getType()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 48
    .end local v0    # "a":Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;
    :goto_1
    return-object v0

    .line 43
    .restart local v0    # "a":Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "a":Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    return-object v0
.end method

.method public static values()[Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->$VALUES:[Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    invoke-virtual {v0}, [Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->type:I

    return v0
.end method
