.class public final enum Lcn/nubia/notepad/utils/Logs$LEVEL;
.super Ljava/lang/Enum;
.source "Logs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/utils/Logs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LEVEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/notepad/utils/Logs$LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/notepad/utils/Logs$LEVEL;

.field public static final enum d:Lcn/nubia/notepad/utils/Logs$LEVEL;

.field public static final enum e:Lcn/nubia/notepad/utils/Logs$LEVEL;

.field public static final enum i:Lcn/nubia/notepad/utils/Logs$LEVEL;

.field public static final enum v:Lcn/nubia/notepad/utils/Logs$LEVEL;

.field public static final enum w:Lcn/nubia/notepad/utils/Logs$LEVEL;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcn/nubia/notepad/utils/Logs$LEVEL;

    const-string v1, "i"

    invoke-direct {v0, v1, v2}, Lcn/nubia/notepad/utils/Logs$LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/utils/Logs$LEVEL;->i:Lcn/nubia/notepad/utils/Logs$LEVEL;

    new-instance v0, Lcn/nubia/notepad/utils/Logs$LEVEL;

    const-string v1, "d"

    invoke-direct {v0, v1, v3}, Lcn/nubia/notepad/utils/Logs$LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/utils/Logs$LEVEL;->d:Lcn/nubia/notepad/utils/Logs$LEVEL;

    new-instance v0, Lcn/nubia/notepad/utils/Logs$LEVEL;

    const-string v1, "v"

    invoke-direct {v0, v1, v4}, Lcn/nubia/notepad/utils/Logs$LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/utils/Logs$LEVEL;->v:Lcn/nubia/notepad/utils/Logs$LEVEL;

    new-instance v0, Lcn/nubia/notepad/utils/Logs$LEVEL;

    const-string v1, "w"

    invoke-direct {v0, v1, v5}, Lcn/nubia/notepad/utils/Logs$LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/utils/Logs$LEVEL;->w:Lcn/nubia/notepad/utils/Logs$LEVEL;

    new-instance v0, Lcn/nubia/notepad/utils/Logs$LEVEL;

    const-string v1, "e"

    invoke-direct {v0, v1, v6}, Lcn/nubia/notepad/utils/Logs$LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/utils/Logs$LEVEL;->e:Lcn/nubia/notepad/utils/Logs$LEVEL;

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Lcn/nubia/notepad/utils/Logs$LEVEL;

    sget-object v1, Lcn/nubia/notepad/utils/Logs$LEVEL;->i:Lcn/nubia/notepad/utils/Logs$LEVEL;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/notepad/utils/Logs$LEVEL;->d:Lcn/nubia/notepad/utils/Logs$LEVEL;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/notepad/utils/Logs$LEVEL;->v:Lcn/nubia/notepad/utils/Logs$LEVEL;

    aput-object v1, v0, v4

    sget-object v1, Lcn/nubia/notepad/utils/Logs$LEVEL;->w:Lcn/nubia/notepad/utils/Logs$LEVEL;

    aput-object v1, v0, v5

    sget-object v1, Lcn/nubia/notepad/utils/Logs$LEVEL;->e:Lcn/nubia/notepad/utils/Logs$LEVEL;

    aput-object v1, v0, v6

    sput-object v0, Lcn/nubia/notepad/utils/Logs$LEVEL;->$VALUES:[Lcn/nubia/notepad/utils/Logs$LEVEL;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/notepad/utils/Logs$LEVEL;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcn/nubia/notepad/utils/Logs$LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/Logs$LEVEL;

    return-object v0
.end method

.method public static values()[Lcn/nubia/notepad/utils/Logs$LEVEL;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcn/nubia/notepad/utils/Logs$LEVEL;->$VALUES:[Lcn/nubia/notepad/utils/Logs$LEVEL;

    invoke-virtual {v0}, [Lcn/nubia/notepad/utils/Logs$LEVEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/notepad/utils/Logs$LEVEL;

    return-object v0
.end method
