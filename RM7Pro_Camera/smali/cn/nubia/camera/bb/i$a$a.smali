.class Lcn/nubia/camera/bb/i$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/k/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/bb/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/i$a;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/bb/i$a;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcn/nubia/camera/bb/i$a$a;->a:Lcn/nubia/camera/bb/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/bb/i$a;Lcn/nubia/camera/bb/i$1;)V
    .locals 0

    .line 231
    invoke-direct {p0, p1}, Lcn/nubia/camera/bb/i$a$a;-><init>(Lcn/nubia/camera/bb/i$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lcn/nubia/k/a/b$a;)V
    .locals 2

    .line 234
    sget-object p1, Lcn/nubia/k/a/b$a;->a:Lcn/nubia/k/a/b$a;

    const-string v0, "NormalVideoRecordManagerImpl"

    if-ne p2, p1, :cond_0

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video snapshot storage "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video snapshot storage fail "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
