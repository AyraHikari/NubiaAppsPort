.class Lcn/nubia/music/database/AccessRequest$a;
.super Ljava/lang/Object;
.source "AccessRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/database/AccessRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcn/nubia/music/database/AccessError;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/nubia/music/database/AccessError;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcn/nubia/music/database/AccessRequest$a;->a:Lcn/nubia/music/database/AccessError;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/database/AccessRequest$a;->b:Ljava/lang/Object;

    .line 67
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/database/AccessRequest$a;->a:Lcn/nubia/music/database/AccessError;

    .line 71
    iput-object p1, p0, Lcn/nubia/music/database/AccessRequest$a;->b:Ljava/lang/Object;

    .line 72
    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/music/database/AccessError;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcn/nubia/music/database/AccessRequest$a;->a:Lcn/nubia/music/database/AccessError;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/music/database/AccessRequest$a;->b:Ljava/lang/Object;

    return-object v0
.end method
