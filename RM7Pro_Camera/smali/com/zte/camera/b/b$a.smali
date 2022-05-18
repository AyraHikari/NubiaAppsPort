.class final enum Lcom/zte/camera/b/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/camera/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/camera/b/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/zte/camera/b/b$a;

.field public static final enum b:Lcom/zte/camera/b/b$a;

.field public static final enum c:Lcom/zte/camera/b/b$a;

.field public static final enum d:Lcom/zte/camera/b/b$a;

.field public static final enum e:Lcom/zte/camera/b/b$a;

.field public static final enum f:Lcom/zte/camera/b/b$a;

.field private static final synthetic g:[Lcom/zte/camera/b/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 113
    new-instance v0, Lcom/zte/camera/b/b$a;

    const-string v1, "MODE_SELECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zte/camera/b/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/camera/b/b$a;->a:Lcom/zte/camera/b/b$a;

    new-instance v1, Lcom/zte/camera/b/b$a;

    const-string v3, "PREVIEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/zte/camera/b/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/zte/camera/b/b$a;->b:Lcom/zte/camera/b/b$a;

    new-instance v3, Lcom/zte/camera/b/b$a;

    const-string v5, "RECORDINNG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/zte/camera/b/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/zte/camera/b/b$a;->c:Lcom/zte/camera/b/b$a;

    new-instance v5, Lcom/zte/camera/b/b$a;

    const-string v7, "AUTO_REVIEW_SEGMENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/zte/camera/b/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/zte/camera/b/b$a;->d:Lcom/zte/camera/b/b$a;

    new-instance v7, Lcom/zte/camera/b/b$a;

    const-string v9, "AUTO_REVIEW_FINAL_VLOG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/zte/camera/b/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/zte/camera/b/b$a;->e:Lcom/zte/camera/b/b$a;

    new-instance v9, Lcom/zte/camera/b/b$a;

    const-string v11, "SAVE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/zte/camera/b/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/zte/camera/b/b$a;->f:Lcom/zte/camera/b/b$a;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/zte/camera/b/b$a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 108
    sput-object v11, Lcom/zte/camera/b/b$a;->g:[Lcom/zte/camera/b/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/camera/b/b$a;
    .locals 1

    .line 108
    const-class v0, Lcom/zte/camera/b/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/camera/b/b$a;

    return-object p0
.end method

.method public static values()[Lcom/zte/camera/b/b$a;
    .locals 1

    .line 108
    sget-object v0, Lcom/zte/camera/b/b$a;->g:[Lcom/zte/camera/b/b$a;

    invoke-virtual {v0}, [Lcom/zte/camera/b/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/camera/b/b$a;

    return-object v0
.end method
