.class public Landroidx/g/a/b$a;
.super Landroidx/lifecycle/m;
.source "SourceFile"

# interfaces
.implements Landroidx/g/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/g/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/m<",
        "TD;>;",
        "Landroidx/g/b/a$a<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final e:I

.field private final f:Landroid/os/Bundle;

.field private final g:Landroidx/g/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/g/b/a<",
            "TD;>;"
        }
    .end annotation
.end field

.field private h:Landroidx/lifecycle/h;

.field private i:Landroidx/g/a/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/g/a/b$b<",
            "TD;>;"
        }
    .end annotation
.end field

.field private j:Landroidx/g/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/g/b/a<",
            "TD;>;"
        }
    .end annotation
.end field


# virtual methods
.method a(Z)Landroidx/g/b/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/g/b/a<",
            "TD;>;"
        }
    .end annotation

    .line 149
    sget-boolean v0, Landroidx/g/a/b;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Destroying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    iget-object v0, p0, Landroidx/g/a/b$a;->g:Landroidx/g/b/a;

    invoke-virtual {v0}, Landroidx/g/b/a;->c()Z

    .line 152
    iget-object v0, p0, Landroidx/g/a/b$a;->g:Landroidx/g/b/a;

    invoke-virtual {v0}, Landroidx/g/b/a;->g()V

    .line 154
    iget-object v0, p0, Landroidx/g/a/b$a;->i:Landroidx/g/a/b$b;

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0, v0}, Landroidx/g/a/b$a;->a(Landroidx/lifecycle/n;)V

    if-eqz p1, :cond_1

    .line 158
    invoke-virtual {v0}, Landroidx/g/a/b$b;->b()V

    .line 162
    :cond_1
    iget-object v1, p0, Landroidx/g/a/b$a;->g:Landroidx/g/b/a;

    invoke-virtual {v1, p0}, Landroidx/g/b/a;->a(Landroidx/g/b/a$a;)V

    if-eqz v0, :cond_2

    .line 163
    invoke-virtual {v0}, Landroidx/g/a/b$b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    .line 164
    :cond_3
    iget-object p1, p0, Landroidx/g/a/b$a;->g:Landroidx/g/b/a;

    invoke-virtual {p1}, Landroidx/g/b/a;->i()V

    .line 165
    iget-object p1, p0, Landroidx/g/a/b$a;->j:Landroidx/g/b/a;

    return-object p1

    .line 167
    :cond_4
    iget-object p1, p0, Landroidx/g/a/b$a;->g:Landroidx/g/b/a;

    return-object p1
.end method

.method public a(Landroidx/lifecycle/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/n<",
            "-TD;>;)V"
        }
    .end annotation

    .line 134
    invoke-super {p0, p1}, Landroidx/lifecycle/m;->a(Landroidx/lifecycle/n;)V

    const/4 p1, 0x0

    .line 136
    iput-object p1, p0, Landroidx/g/a/b$a;->h:Landroidx/lifecycle/h;

    .line 137
    iput-object p1, p0, Landroidx/g/a/b$a;->i:Landroidx/g/a/b$b;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 189
    invoke-super {p0, p1}, Landroidx/lifecycle/m;->a(Ljava/lang/Object;)V

    .line 191
    iget-object p1, p0, Landroidx/g/a/b$a;->j:Landroidx/g/b/a;

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p1}, Landroidx/g/b/a;->i()V

    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Landroidx/g/a/b$a;->j:Landroidx/g/b/a;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 212
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/g/a/b$a;->e:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mArgs="

    .line 213
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/g/a/b$a;->f:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/g/a/b$a;->g:Landroidx/g/b/a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Landroidx/g/a/b$a;->g:Landroidx/g/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/g/b/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 216
    iget-object p2, p0, Landroidx/g/a/b$a;->i:Landroidx/g/a/b$b;

    if-eqz p2, :cond_0

    .line 217
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCallbacks="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/g/a/b$a;->i:Landroidx/g/a/b$b;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 218
    iget-object p2, p0, Landroidx/g/a/b$a;->i:Landroidx/g/a/b$b;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4, p3}, Landroidx/g/a/b$b;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 220
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mData="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Landroidx/g/a/b$a;->e()Landroidx/g/b/a;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/g/a/b$a;->a()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroidx/g/b/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 220
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mStarted="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Landroidx/g/a/b$a;->d()Z

    move-result p1

    .line 222
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method protected b()V
    .locals 2

    .line 76
    sget-boolean v0, Landroidx/g/a/b;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Starting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    iget-object v0, p0, Landroidx/g/a/b$a;->g:Landroidx/g/b/a;

    invoke-virtual {v0}, Landroidx/g/b/a;->a()V

    return-void
.end method

.method protected c()V
    .locals 2

    .line 82
    sget-boolean v0, Landroidx/g/a/b;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Stopping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iget-object v0, p0, Landroidx/g/a/b$a;->g:Landroidx/g/b/a;

    invoke-virtual {v0}, Landroidx/g/b/a;->e()V

    return-void
.end method

.method e()Landroidx/g/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/g/b/a<",
            "TD;>;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Landroidx/g/a/b$a;->g:Landroidx/g/b/a;

    return-object v0
.end method

.method f()V
    .locals 2

    .line 111
    iget-object v0, p0, Landroidx/g/a/b$a;->h:Landroidx/lifecycle/h;

    .line 112
    iget-object v1, p0, Landroidx/g/a/b$a;->i:Landroidx/g/a/b$b;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 118
    invoke-super {p0, v1}, Landroidx/lifecycle/m;->a(Landroidx/lifecycle/n;)V

    .line 119
    invoke-virtual {p0, v0, v1}, Landroidx/g/a/b$a;->a(Landroidx/lifecycle/h;Landroidx/lifecycle/n;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget v1, p0, Landroidx/g/a/b$a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v1, p0, Landroidx/g/a/b$a;->g:Landroidx/g/b/a;

    invoke-static {v1, v0}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
