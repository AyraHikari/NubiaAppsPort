.class public final enum Lcn/nubia/music/app/task/MusicAsyncTask$Status;
.super Ljava/lang/Enum;
.source "MusicAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/task/MusicAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/music/app/task/MusicAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/music/app/task/MusicAsyncTask$Status;

.field public static final enum FINISHED:Lcn/nubia/music/app/task/MusicAsyncTask$Status;

.field public static final enum PENDING:Lcn/nubia/music/app/task/MusicAsyncTask$Status;

.field public static final enum RUNNING:Lcn/nubia/music/app/task/MusicAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 256
    new-instance v0, Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcn/nubia/music/app/task/MusicAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/app/task/MusicAsyncTask$Status;->PENDING:Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    .line 258
    new-instance v0, Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcn/nubia/music/app/task/MusicAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/app/task/MusicAsyncTask$Status;->RUNNING:Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    .line 260
    new-instance v0, Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcn/nubia/music/app/task/MusicAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/app/task/MusicAsyncTask$Status;->FINISHED:Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    .line 255
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    sget-object v1, Lcn/nubia/music/app/task/MusicAsyncTask$Status;->PENDING:Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/music/app/task/MusicAsyncTask$Status;->RUNNING:Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/music/app/task/MusicAsyncTask$Status;->FINISHED:Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcn/nubia/music/app/task/MusicAsyncTask$Status;->$VALUES:[Lcn/nubia/music/app/task/MusicAsyncTask$Status;

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
    .line 255
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/music/app/task/MusicAsyncTask$Status;
    .locals 1

    .prologue
    .line 255
    const-class v0, Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    return-object v0
.end method

.method public static values()[Lcn/nubia/music/app/task/MusicAsyncTask$Status;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcn/nubia/music/app/task/MusicAsyncTask$Status;->$VALUES:[Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    invoke-virtual {v0}, [Lcn/nubia/music/app/task/MusicAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/music/app/task/MusicAsyncTask$Status;

    return-object v0
.end method
