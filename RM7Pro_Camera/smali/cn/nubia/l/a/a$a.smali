.class Lcn/nubia/l/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/l/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:I

.field public final c:J

.field public final d:Landroid/net/Uri;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(JIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-wide p1, p0, Lcn/nubia/l/a/a$a;->a:J

    .line 139
    iput p3, p0, Lcn/nubia/l/a/a$a;->b:I

    .line 140
    iput-wide p4, p0, Lcn/nubia/l/a/a$a;->c:J

    .line 141
    iput-object p6, p0, Lcn/nubia/l/a/a$a;->d:Landroid/net/Uri;

    .line 142
    iput-object p7, p0, Lcn/nubia/l/a/a$a;->e:Ljava/lang/String;

    .line 143
    iput-object p8, p0, Lcn/nubia/l/a/a$a;->f:Ljava/lang/String;

    return-void
.end method
