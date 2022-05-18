.class public final enum Lcom/zte/camera/ui/b/c/a/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/camera/ui/b/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/camera/ui/b/c/a/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/zte/camera/ui/b/c/a/b$b;

.field public static final enum b:Lcom/zte/camera/ui/b/c/a/b$b;

.field public static final enum c:Lcom/zte/camera/ui/b/c/a/b$b;

.field public static final enum d:Lcom/zte/camera/ui/b/c/a/b$b;

.field public static final enum e:Lcom/zte/camera/ui/b/c/a/b$b;

.field private static final synthetic f:[Lcom/zte/camera/ui/b/c/a/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 8
    new-instance v0, Lcom/zte/camera/ui/b/c/a/b$b;

    const-string v1, "SCALE_ANIMATION_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zte/camera/ui/b/c/a/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/camera/ui/b/c/a/b$b;->a:Lcom/zte/camera/ui/b/c/a/b$b;

    .line 10
    new-instance v1, Lcom/zte/camera/ui/b/c/a/b$b;

    const-string v3, "HORIZONTAL_TRANSLATE_ANIMATION_TYPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/zte/camera/ui/b/c/a/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/zte/camera/ui/b/c/a/b$b;->b:Lcom/zte/camera/ui/b/c/a/b$b;

    .line 12
    new-instance v3, Lcom/zte/camera/ui/b/c/a/b$b;

    const-string v5, "PORTRAIT_TRANSLATE_ANIMATION_TYPE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/zte/camera/ui/b/c/a/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/zte/camera/ui/b/c/a/b$b;->c:Lcom/zte/camera/ui/b/c/a/b$b;

    .line 14
    new-instance v5, Lcom/zte/camera/ui/b/c/a/b$b;

    const-string v7, "ROTATION_ANIMATION_TYPE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/zte/camera/ui/b/c/a/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/zte/camera/ui/b/c/a/b$b;->d:Lcom/zte/camera/ui/b/c/a/b$b;

    .line 16
    new-instance v7, Lcom/zte/camera/ui/b/c/a/b$b;

    const-string v9, "ALPHA_ANIMATION_TYPE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/zte/camera/ui/b/c/a/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/zte/camera/ui/b/c/a/b$b;->e:Lcom/zte/camera/ui/b/c/a/b$b;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/zte/camera/ui/b/c/a/b$b;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/zte/camera/ui/b/c/a/b$b;->f:[Lcom/zte/camera/ui/b/c/a/b$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/camera/ui/b/c/a/b$b;
    .locals 1

    .line 6
    const-class v0, Lcom/zte/camera/ui/b/c/a/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/camera/ui/b/c/a/b$b;

    return-object p0
.end method

.method public static values()[Lcom/zte/camera/ui/b/c/a/b$b;
    .locals 1

    .line 6
    sget-object v0, Lcom/zte/camera/ui/b/c/a/b$b;->f:[Lcom/zte/camera/ui/b/c/a/b$b;

    invoke-virtual {v0}, [Lcom/zte/camera/ui/b/c/a/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/camera/ui/b/c/a/b$b;

    return-object v0
.end method
