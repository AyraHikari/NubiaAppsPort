.class public final Landroidx/core/content/a/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/content/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:[Landroidx/core/content/a/c$c;


# direct methods
.method public constructor <init>([Landroidx/core/content/a/c$c;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Landroidx/core/content/a/c$b;->a:[Landroidx/core/content/a/c$c;

    return-void
.end method


# virtual methods
.method public a()[Landroidx/core/content/a/c$c;
    .locals 1

    .line 158
    iget-object v0, p0, Landroidx/core/content/a/c$b;->a:[Landroidx/core/content/a/c$c;

    return-object v0
.end method
