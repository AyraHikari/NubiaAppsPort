.class Lcom/zte/camera/ui/b/c/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/camera/ui/b/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/zte/camera/ui/b/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 401
    new-instance v0, Lcom/zte/camera/ui/b/c/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zte/camera/ui/b/c/b;-><init>(Lcom/zte/camera/ui/b/c/b$1;)V

    sput-object v0, Lcom/zte/camera/ui/b/c/b$a;->a:Lcom/zte/camera/ui/b/c/b;

    return-void
.end method

.method static synthetic a()Lcom/zte/camera/ui/b/c/b;
    .locals 1

    .line 400
    sget-object v0, Lcom/zte/camera/ui/b/c/b$a;->a:Lcom/zte/camera/ui/b/c/b;

    return-object v0
.end method
