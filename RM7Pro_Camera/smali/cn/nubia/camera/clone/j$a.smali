.class public final enum Lcn/nubia/camera/clone/j$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/clone/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/camera/clone/j$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/camera/clone/j$a;

.field public static final enum b:Lcn/nubia/camera/clone/j$a;

.field public static final enum c:Lcn/nubia/camera/clone/j$a;

.field public static final enum d:Lcn/nubia/camera/clone/j$a;

.field public static final enum e:Lcn/nubia/camera/clone/j$a;

.field public static final enum f:Lcn/nubia/camera/clone/j$a;

.field public static final enum g:Lcn/nubia/camera/clone/j$a;

.field public static final enum h:Lcn/nubia/camera/clone/j$a;

.field public static final enum i:Lcn/nubia/camera/clone/j$a;

.field private static final synthetic j:[Lcn/nubia/camera/clone/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 31
    new-instance v0, Lcn/nubia/camera/clone/j$a;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/clone/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/camera/clone/j$a;->a:Lcn/nubia/camera/clone/j$a;

    .line 36
    new-instance v1, Lcn/nubia/camera/clone/j$a;

    const-string v3, "SAVE_DATA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/camera/clone/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/camera/clone/j$a;->b:Lcn/nubia/camera/clone/j$a;

    .line 41
    new-instance v3, Lcn/nubia/camera/clone/j$a;

    const-string v5, "COMPOSITION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/nubia/camera/clone/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/nubia/camera/clone/j$a;->c:Lcn/nubia/camera/clone/j$a;

    .line 46
    new-instance v5, Lcn/nubia/camera/clone/j$a;

    const-string v7, "COMPOSECON_FIRM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/nubia/camera/clone/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/nubia/camera/clone/j$a;->d:Lcn/nubia/camera/clone/j$a;

    .line 51
    new-instance v7, Lcn/nubia/camera/clone/j$a;

    const-string v9, "CLEAN_DATA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/nubia/camera/clone/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/nubia/camera/clone/j$a;->e:Lcn/nubia/camera/clone/j$a;

    .line 56
    new-instance v9, Lcn/nubia/camera/clone/j$a;

    const-string v11, "EDIT_GET_PICTURE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcn/nubia/camera/clone/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcn/nubia/camera/clone/j$a;->f:Lcn/nubia/camera/clone/j$a;

    .line 61
    new-instance v11, Lcn/nubia/camera/clone/j$a;

    const-string v13, "PAINT_CONTOUR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcn/nubia/camera/clone/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcn/nubia/camera/clone/j$a;->g:Lcn/nubia/camera/clone/j$a;

    .line 66
    new-instance v13, Lcn/nubia/camera/clone/j$a;

    const-string v15, "EDIT_PREVIEW"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcn/nubia/camera/clone/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcn/nubia/camera/clone/j$a;->h:Lcn/nubia/camera/clone/j$a;

    .line 71
    new-instance v15, Lcn/nubia/camera/clone/j$a;

    const-string v14, "ERASE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcn/nubia/camera/clone/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcn/nubia/camera/clone/j$a;->i:Lcn/nubia/camera/clone/j$a;

    const/16 v14, 0x9

    new-array v14, v14, [Lcn/nubia/camera/clone/j$a;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 27
    sput-object v14, Lcn/nubia/camera/clone/j$a;->j:[Lcn/nubia/camera/clone/j$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/camera/clone/j$a;
    .locals 1

    .line 27
    const-class v0, Lcn/nubia/camera/clone/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/camera/clone/j$a;

    return-object p0
.end method

.method public static values()[Lcn/nubia/camera/clone/j$a;
    .locals 1

    .line 27
    sget-object v0, Lcn/nubia/camera/clone/j$a;->j:[Lcn/nubia/camera/clone/j$a;

    invoke-virtual {v0}, [Lcn/nubia/camera/clone/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/camera/clone/j$a;

    return-object v0
.end method
