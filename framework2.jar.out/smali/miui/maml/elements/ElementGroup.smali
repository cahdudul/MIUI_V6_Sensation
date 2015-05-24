.class public Lmiui/maml/elements/ElementGroup;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "ElementGroup.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LockScreen_ElementGroup"

.field public static final TAG_NAME:Ljava/lang/String; = "ElementGroup"

.field public static final TAG_NAME1:Ljava/lang/String; = "Group"


# instance fields
.field protected mClip:Z

.field protected mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ScreenElement;",
            ">;"
        }
    .end annotation
.end field

.field private mLayered:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 29
    invoke-direct {p0, p1}, Lmiui/maml/elements/ElementGroup;->load(Lorg/w3c/dom/Element;)V

    .line 30
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 8
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 33
    if-nez p1, :cond_1

    .line 47
    :cond_0
    return-void

    .line 35
    :cond_1
    const-string v6, "clip"

    invoke-virtual {p0, p1, v6}, Lmiui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    .line 36
    const-string v6, "layered"

    invoke-virtual {p0, p1, v6}, Lmiui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmiui/maml/elements/ElementGroup;->mLayered:Z

    .line 37
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v6

    iget-object v3, v6, Lmiui/maml/ScreenContext;->mFactory:Lmiui/maml/elements/ScreenElementFactory;

    .line 38
    .local v3, "factory":Lmiui/maml/elements/ScreenElementFactory;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 39
    .local v2, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 40
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 41
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 42
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 43
    .local v5, "item":Lorg/w3c/dom/Element;
    iget-object v6, p0, Lmiui/maml/elements/ElementGroup;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3, v5, v6}, Lmiui/maml/elements/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    .line 44
    .local v1, "child":Lmiui/maml/elements/ScreenElement;
    if-eqz v1, :cond_3

    .end local v1    # "child":Lmiui/maml/elements/ScreenElement;
    :goto_1
    invoke-virtual {p0, v1}, Lmiui/maml/elements/ElementGroup;->addElement(Lmiui/maml/elements/ScreenElement;)V

    .line 40
    .end local v5    # "item":Lorg/w3c/dom/Element;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 44
    .restart local v1    # "child":Lmiui/maml/elements/ScreenElement;
    .restart local v5    # "item":Lorg/w3c/dom/Element;
    :cond_3
    invoke-virtual {p0, v5}, Lmiui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V
    .locals 3
    .param p1, "v"    # Lmiui/maml/elements/ScreenElementVisitor;

    .prologue
    .line 273
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    .line 274
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 275
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 276
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lmiui/maml/elements/ScreenElement;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :cond_0
    return-void
.end method

.method public addElement(Lmiui/maml/elements/ScreenElement;)V
    .locals 1
    .param p1, "newElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1, p0}, Lmiui/maml/elements/ScreenElement;->setParent(Lmiui/maml/elements/ElementGroup;)V

    .line 52
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    return-void
.end method

.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x0

    .line 142
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getWidth()F

    move-result v11

    .line 143
    .local v11, "w":F
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getHeight()F

    move-result v8

    .line 144
    .local v8, "h":F
    invoke-virtual {p0, v12, v11}, Lmiui/maml/elements/ElementGroup;->getLeft(FF)F

    move-result v1

    .line 145
    .local v1, "x":F
    invoke-virtual {p0, v12, v8}, Lmiui/maml/elements/ElementGroup;->getTop(FF)F

    move-result v2

    .line 146
    .local v2, "y":F
    const/4 v10, 0x0

    .line 147
    .local v10, "rs":I
    iget-boolean v0, p0, Lmiui/maml/elements/ElementGroup;->mLayered:Z

    if-eqz v0, :cond_1

    cmpl-float v0, v11, v12

    if-lez v0, :cond_1

    cmpl-float v0, v8, v12

    if-lez v0, :cond_1

    .line 148
    add-float v3, v1, v11

    add-float v4, v2, v8

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v10

    .line 152
    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    cmpl-float v0, v11, v12

    if-lez v0, :cond_0

    cmpl-float v0, v8, v12

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p1, v12, v12, v11, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 157
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 158
    .local v7, "N":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v7, :cond_2

    .line 159
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 158
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 150
    .end local v7    # "N":I
    .end local v9    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    goto :goto_0

    .line 161
    .restart local v7    # "N":I
    .restart local v9    # "i":I
    :cond_2
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 162
    return-void
.end method

.method protected doTick(J)V
    .locals 3
    .param p1, "currentTime"    # J

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 167
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    :cond_0
    return-void

    .line 170
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 171
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 172
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->tick(J)V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    .line 254
    .local v1, "ele":Lmiui/maml/elements/ScreenElement;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 264
    :goto_0
    return-object v3

    .line 257
    :cond_0
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 258
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 259
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v3, p1}, Lmiui/maml/elements/ScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_1

    move-object v3, v1

    .line 261
    goto :goto_0

    .line 258
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 264
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 5

    .prologue
    .line 227
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->finish()V

    .line 229
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 230
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 233
    :try_start_0
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v3}, Lmiui/maml/elements/ScreenElement;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "LockScreen_ElementGroup"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 239
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public getElements()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ScreenElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getParentLeft()F
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getLeft()F

    move-result v1

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v0

    goto :goto_0
.end method

.method protected getParentTop()F
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getTop()F

    move-result v1

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getParentTop()F

    move-result v0

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    .line 74
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 75
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 76
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->init()V

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method protected onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;
    .locals 1
    .param p1, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 200
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    .line 201
    const/4 v3, 0x0

    .line 212
    :goto_0
    return v3

    .line 203
    :cond_0
    const/4 v2, 0x0

    .line 204
    .local v2, "ret":Z
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 205
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 206
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v3, p1}, Lmiui/maml/elements/ScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 207
    const/4 v2, 0x1

    .line 212
    :cond_1
    if-eqz v2, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    .line 205
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    :cond_3
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 178
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->isVisible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 179
    const/4 v4, 0x0

    .line 195
    :goto_0
    return v4

    .line 181
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 182
    .local v1, "action":I
    iget-boolean v4, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0, v4, v5}, Lmiui/maml/elements/ElementGroup;->touched(FF)Z

    move-result v4

    if-nez v4, :cond_1

    .line 183
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 185
    :cond_1
    const/4 v3, 0x0

    .line 186
    .local v3, "ret":Z
    iget-object v4, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 187
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 188
    iget-object v4, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v4, p1}, Lmiui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 189
    const/4 v3, 0x1

    .line 193
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 195
    if-eqz v3, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    .line 187
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 195
    :cond_4
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method protected onVisibilityChange(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 282
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 283
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 284
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 285
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 122
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->pause()V

    .line 124
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 125
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 126
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->pause()V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method public pauseAnim(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->pauseAnim(J)V

    .line 94
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 95
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 96
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method public playAnim(JJJZZ)V
    .locals 11
    .param p1, "time"    # J
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "isLoop"    # Z
    .param p8, "isDelay"    # Z

    .prologue
    .line 82
    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/AnimatedScreenElement;->playAnim(JJJZZ)V

    .line 84
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 85
    .local v9, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 86
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ScreenElement;

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 85
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public removeAllElements()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->requestUpdate()V

    .line 64
    return-void
.end method

.method public removeElement(Lmiui/maml/elements/ScreenElement;)V
    .locals 1
    .param p1, "element"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 57
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->requestUpdate()V

    .line 59
    return-void
.end method

.method public reset(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->reset(J)V

    .line 114
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 115
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 116
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 132
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->resume()V

    .line 134
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 135
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 136
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->resume()V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method public resumeAnim(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->resumeAnim(J)V

    .line 104
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 105
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 106
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method

.method public setClip(Z)V
    .locals 0
    .param p1, "clip"    # Z

    .prologue
    .line 290
    iput-boolean p1, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    .line 291
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "show"    # Z

    .prologue
    .line 243
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->showCategory(Ljava/lang/String;Z)V

    .line 245
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 246
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 247
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->showCategory(Ljava/lang/String;Z)V

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_0
    return-void
.end method
