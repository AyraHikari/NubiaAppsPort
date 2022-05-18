.class final enum Lcn/nubia/camera/aa/b$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aa/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/camera/aa/b$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/camera/aa/b$c;

.field public static final enum b:Lcn/nubia/camera/aa/b$c;

.field public static final enum c:Lcn/nubia/camera/aa/b$c;

.field public static final enum d:Lcn/nubia/camera/aa/b$c;

.field public static final enum e:Lcn/nubia/camera/aa/b$c;

.field public static final enum f:Lcn/nubia/camera/aa/b$c;

.field public static final enum g:Lcn/nubia/camera/aa/b$c;

.field private static final synthetic h:[Lcn/nubia/camera/aa/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 67
    new-instance v0, Lcn/nubia/camera/aa/b$c;

    const-string v1, "not_init"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/aa/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/camera/aa/b$c;->a:Lcn/nubia/camera/aa/b$c;

    .line 69
    new-instance v1, Lcn/nubia/camera/aa/b$c;

    const-string v3, "waiting_first_buffer"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/camera/aa/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/camera/aa/b$c;->b:Lcn/nubia/camera/aa/b$c;

    .line 70
    new-instance v3, Lcn/nubia/camera/aa/b$c;

    const-string v5, "idle"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/nubia/camera/aa/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/nubia/camera/aa/b$c;->c:Lcn/nubia/camera/aa/b$c;

    .line 72
    new-instance v5, Lcn/nubia/camera/aa/b$c;

    const-string v7, "encoding"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/nubia/camera/aa/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/nubia/camera/aa/b$c;->d:Lcn/nubia/camera/aa/b$c;

    .line 74
    new-instance v7, Lcn/nubia/camera/aa/b$c;

    const-string v9, "waiting_jpg"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/nubia/camera/aa/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/nubia/camera/aa/b$c;->e:Lcn/nubia/camera/aa/b$c;

    .line 76
    new-instance v9, Lcn/nubia/camera/aa/b$c;

    const-string v11, "exporting"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcn/nubia/camera/aa/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcn/nubia/camera/aa/b$c;->f:Lcn/nubia/camera/aa/b$c;

    .line 78
    new-instance v11, Lcn/nubia/camera/aa/b$c;

    const-string v13, "exit_waiting_jpg"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcn/nubia/camera/aa/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcn/nubia/camera/aa/b$c;->g:Lcn/nubia/camera/aa/b$c;

    const/4 v13, 0x7

    new-array v13, v13, [Lcn/nubia/camera/aa/b$c;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 65
    sput-object v13, Lcn/nubia/camera/aa/b$c;->h:[Lcn/nubia/camera/aa/b$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/camera/aa/b$c;
    .locals 1

    .line 65
    const-class v0, Lcn/nubia/camera/aa/b$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/camera/aa/b$c;

    return-object p0
.end method

.method public static values()[Lcn/nubia/camera/aa/b$c;
    .locals 1

    .line 65
    sget-object v0, Lcn/nubia/camera/aa/b$c;->h:[Lcn/nubia/camera/aa/b$c;

    invoke-virtual {v0}, [Lcn/nubia/camera/aa/b$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/camera/aa/b$c;

    return-object v0
.end method
