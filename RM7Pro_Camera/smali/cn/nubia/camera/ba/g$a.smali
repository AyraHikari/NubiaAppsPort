.class Lcn/nubia/camera/ba/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ba/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/camera/ba/g$a;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 1

    .line 334
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 335
    iget-object p1, p0, Lcn/nubia/camera/ba/g$a;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
