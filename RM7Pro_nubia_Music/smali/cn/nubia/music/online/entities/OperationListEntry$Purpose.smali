.class public final enum Lcn/nubia/music/online/entities/OperationListEntry$Purpose;
.super Ljava/lang/Enum;
.source "OperationListEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/online/entities/OperationListEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Purpose"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/music/online/entities/OperationListEntry$Purpose;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/music/online/entities/OperationListEntry$Purpose;

.field public static final enum AUDITION:Lcn/nubia/music/online/entities/OperationListEntry$Purpose;

.field public static final enum DOWNLOAD:Lcn/nubia/music/online/entities/OperationListEntry$Purpose;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcn/nubia/music/online/entities/OperationListEntry$Purpose;

    const-string v1, "AUDITION"

    invoke-direct {v0, v1, v2}, Lcn/nubia/music/online/entities/OperationListEntry$Purpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/online/entities/OperationListEntry$Purpose;->AUDITION:Lcn/nubia/music/online/entities/OperationListEntry$Purpose;

    new-instance v0, Lcn/nubia/music/online/entities/OperationListEntry$Purpose;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v3}, Lcn/nubia/music/online/entities/OperationListEntry$Purpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/online/entities/OperationListEntry$Purpose;->DOWNLOAD:Lcn/nubia/music/online/entities/OperationListEntry$Purpose;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/nubia/music/online/entities/OperationListEntry$Purpose;

    sget-object v1, Lcn/nubia/music/online/entities/OperationListEntry$Purpose;->AUDITION:Lcn/nubia/music/online/entities/OperationListEntry$Purpose;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/music/online/entities/OperationListEntry$Purpose;->DOWNLOAD:Lcn/nubia/music/online/entities/OperationListEntry$Purpose;

    aput-object v1, v0, v3

    sput-object v0, Lcn/nubia/music/online/entities/OperationListEntry$Purpose;->$VALUES:[Lcn/nubia/music/online/entities/OperationListEntry$Purpose;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/music/online/entities/OperationListEntry$Purpose;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcn/nubia/music/online/entities/OperationListEntry$Purpose;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/entities/OperationListEntry$Purpose;

    return-object v0
.end method

.method public static values()[Lcn/nubia/music/online/entities/OperationListEntry$Purpose;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcn/nubia/music/online/entities/OperationListEntry$Purpose;->$VALUES:[Lcn/nubia/music/online/entities/OperationListEntry$Purpose;

    invoke-virtual {v0}, [Lcn/nubia/music/online/entities/OperationListEntry$Purpose;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/music/online/entities/OperationListEntry$Purpose;

    return-object v0
.end method
