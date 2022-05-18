.class public final enum Lcn/nubia/upgrade/http/DownloadRequest$State;
.super Ljava/lang/Enum;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/http/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/upgrade/http/DownloadRequest$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/upgrade/http/DownloadRequest$State;

.field public static final enum COMPLETE:Lcn/nubia/upgrade/http/DownloadRequest$State;

.field public static final enum ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

.field public static final enum PAUSE:Lcn/nubia/upgrade/http/DownloadRequest$State;

.field public static final enum PREPARE:Lcn/nubia/upgrade/http/DownloadRequest$State;

.field public static final enum RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcn/nubia/upgrade/http/DownloadRequest$State;

    const-string v1, "PREPARE"

    invoke-direct {v0, v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/upgrade/http/DownloadRequest$State;->PREPARE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    new-instance v0, Lcn/nubia/upgrade/http/DownloadRequest$State;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcn/nubia/upgrade/http/DownloadRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    new-instance v0, Lcn/nubia/upgrade/http/DownloadRequest$State;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/upgrade/http/DownloadRequest$State;->PAUSE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    new-instance v0, Lcn/nubia/upgrade/http/DownloadRequest$State;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v5}, Lcn/nubia/upgrade/http/DownloadRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/upgrade/http/DownloadRequest$State;->COMPLETE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    new-instance v0, Lcn/nubia/upgrade/http/DownloadRequest$State;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcn/nubia/upgrade/http/DownloadRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/nubia/upgrade/http/DownloadRequest$State;

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->PREPARE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->PAUSE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    aput-object v1, v0, v4

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->COMPLETE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    aput-object v1, v0, v5

    sget-object v1, Lcn/nubia/upgrade/http/DownloadRequest$State;->ERROR:Lcn/nubia/upgrade/http/DownloadRequest$State;

    aput-object v1, v0, v6

    sput-object v0, Lcn/nubia/upgrade/http/DownloadRequest$State;->$VALUES:[Lcn/nubia/upgrade/http/DownloadRequest$State;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/upgrade/http/DownloadRequest$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcn/nubia/upgrade/http/DownloadRequest$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/upgrade/http/DownloadRequest$State;

    return-object v0
.end method

.method public static values()[Lcn/nubia/upgrade/http/DownloadRequest$State;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcn/nubia/upgrade/http/DownloadRequest$State;->$VALUES:[Lcn/nubia/upgrade/http/DownloadRequest$State;

    invoke-virtual {v0}, [Lcn/nubia/upgrade/http/DownloadRequest$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/upgrade/http/DownloadRequest$State;

    return-object v0
.end method
